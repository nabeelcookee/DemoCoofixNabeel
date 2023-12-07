
import 'package:coofix/src/application/profile_bloc/profile_bloc.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/form_validators.dart';
import 'package:coofix/src/presentation/core/widgets/custom_textfield.dart';
import 'package:coofix/src/presentation/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileBottomSheet extends StatefulWidget {
  const EditProfileBottomSheet({super.key});

  @override
  State<EditProfileBottomSheet> createState() => _EditProfileBottomSheetState();
}

class _EditProfileBottomSheetState extends State<EditProfileBottomSheet> {
  TextEditingController nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
        super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.only(
            left: AppConstants.basePadding,
            right: AppConstants.basePadding,
            bottom: MediaQuery.viewInsetsOf(context).bottom,
            top: kSize.height * .02),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  height: 4,
                  width: kSize.width * .2,
                  decoration: BoxDecoration(
                      color: AppColors.blackColor.withOpacity(.2),
                      borderRadius: BorderRadius.circular(2))),
            ),
            SizedBox(
              height: kSize.height * .03,
            ),
            Text(
              'EDIT PROFILE',
              style: AppTypography.soraSemiBold
                  .copyWith(fontSize: kSize.height * .02),
            ),
            SizedBox(
              height: kSize.height * .02,
            ),
            CustomTextField(
              label: 'Name',
              keyboardType: TextInputType.name,
              maxLines: 1,
              controller: nameController,
              validator: (value) {
                return FormValidators.nameValidate(value);
              },
            ),
            SizedBox(
              height: kSize.height * .02,
            ),
            PrimaryButton(
              text: 'Submit',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.read<ProfileBloc>().add(ProfileEvent.upadeProfile(name: nameController.text));
                  Navigator.pop(context);
                }
              },
            ),
            SizedBox(
              height: kSize.height * .03,
            ),
          ],
        ),
      ),
    );
  }
}
