import 'dart:io';

import 'package:coofix/src/application/address_bloc/address_bloc.dart';
import 'package:coofix/src/application/address_bloc/address_state.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/form_validators.dart';
import 'package:coofix/src/presentation/core/widgets/custom_textfield.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:coofix/src/presentation/view/manage_address/add_new_address/widgets/addressmodecontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class AllTextFormField extends StatefulWidget {
  AllTextFormField({super.key, this.ksize});
  final Size? ksize;
  int selectedIndex = 0;
  @override
  State<AllTextFormField> createState() => _AllTextFormFieldState();
}

class _AllTextFormFieldState extends State<AllTextFormField> {
  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final pincodeController = TextEditingController();
  final directionToReachController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Full Name
            CustomTextField(
              label: "Full Name",
              controller: fullNameController,
              validator: (value) {
                return FormValidators.nameValidate(value) &&
                    FormValidators.emptyValidate(value);
              },
            ),
            SizedBox(
              height: widget.ksize!.height * 0.01,
            ),

            //Address
            CustomTextField(
              maxLines: 2,
              label: "Address",
              controller: addressController,
              validator: (value) {
                return FormValidators.emptyValidate(value);
              },
            ),
            SizedBox(
              height: widget.ksize!.height * 0.01,
            ),

            //Pincode
            CustomTextField(
              keyboardType: TextInputType.number,
              inputFormatter: [
                LengthLimitingTextInputFormatter(6),
              ],
              label: "Pincode",
              controller: pincodeController,
              validator: (value) {
                return FormValidators.emptyValidate(value) &&
                    FormValidators.pincodeValidate(value) &&
                    FormValidators.lessThan6Validate(value);
              },
            ),
            SizedBox(
              height: widget.ksize!.height * 0.01,
            ),

            //Direction to reach (optional)
            CustomTextField(
              label: "Direction to reach (optional)",
              controller: directionToReachController,
            ),
            SizedBox(
              height: widget.ksize!.height * 0.01,
            ),

            //Save This Address as ( container )
            Text(
              "Save this address as",
              style: AppTypography.soraRegular.copyWith(
                  fontSize: widget.ksize!.height * 0.022,
                  color: const Color(0xFF64727B)),
            ),
            SizedBox(
              height: widget.ksize!.height * 0.015,
            ),
            SizedBox(
              width: widget.ksize!.width,
              height: widget.ksize!.height * 0.05,
              child: SaveThisAddressAsContainer(
                onIndexChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: widget.ksize!.height * 0.1,
            ),
            //Footer button
            BlocBuilder<AddressBloc, AddressState>(
              builder: (context, state) {
                return PrimaryButton(
                          text: "Add",
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<AddressBloc>().add(AddressEvent.addAddress(
                                  id: "",
                                  addressType: selectedIndex == 0
                                      ? "Home"
                                      : (selectedIndex == 1 ? "Work" : "Other"),
                                  fullName: fullNameController.text,
                                  address: addressController.text,
                                  pinCode: pincodeController.text,
                                  directionToReach: directionToReachController.text,
                                  locationLatitude: 10.9920763,
                                  locationLongitude: 76.227287));
                              fullNameController.clear();
                              addressController.clear();
                              pincodeController.clear();
                              directionToReachController.clear();
                               Navigator.pop(context);
                               context.read<AddressBloc>().add( const AddressEvent.getAddress(limit: 0, skip: 0, id: ""));
                            }
                          },
                        );
              },
            ),
            SizedBox(
              height: widget.ksize!.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
