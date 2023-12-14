import 'dart:io';
import 'package:coofix/app/router/router_constants.dart';
import 'package:coofix/src/application/address_bloc/address_bloc.dart';
import 'package:coofix/src/application/profile_bloc/profile_bloc.dart';
import 'package:coofix/src/application/profile_bloc/profile_state.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/images.dart';
import 'package:coofix/src/presentation/core/theme/colors.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/view/profile/widgets/edit_profile_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController nameController = TextEditingController();
  CroppedFile? imageFile;
  @override
  void initState() {
    context.read<ProfileBloc>().add(ProfileEvent.upadeProfile(name: nameController.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: kSize.height * .07,
          ),
          Center(
            child: BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (kDebugMode) {
                  print("name : ${state.name}");
                }
                if (kDebugMode) {
                  print("phone :${state.phoneNumber}");
                }
                return Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: kSize.height * 0.126,
                          width: kSize.height * 0.126,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: imageFile == null ? Image.asset(AppImages.serviceMan, fit: BoxFit.cover) : Image.file(File(imageFile!.path), fit: BoxFit.cover),
                        ),
                        Positioned(
                          bottom: -10,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return Wrap(
                                    children: [
                                      bottomSheet(),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(
                                alignment: Alignment.center,
                                height: kSize.height * 0.04,
                                width: kSize.height * 0.04,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [BoxShadow(color: AppColors.blackColor.withOpacity(.08), blurRadius: 20, offset: const Offset(-10, 4))],
                                    color: AppColors.secondaryColor),
                                child: Image.asset(AppImages.galleryIcon, height: kSize.height * .021)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kSize.height * .015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.name,
                          style: AppTypography.soraSemiBold.copyWith(fontSize: kSize.height * 0.031),
                        ),
                        SizedBox(
                          width: kSize.width * .025,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              enableDrag: true,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(kSize.height * .022), topRight: Radius.circular(kSize.height * .022))),
                              builder: (context) {
                                return EditProfileBottomSheet(
                                  nameController: nameController,
                                );
                              },
                            );
                          },
                          child: Image.asset(
                            AppImages.profilEditIcon,
                            height: kSize.height * .018,
                            color: AppColors.blueColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: kSize.height * .01,
                    ),
                    Text(
                      state.phoneNumber,
                      style: AppTypography.soraRegular.copyWith(fontSize: kSize.height * 0.019, color: AppColors.blueGrey1),
                    ),
                    SizedBox(
                      height: kSize.height * .04,
                    ),
                  ],
                );
              },
            ),
          ),
          profileDataTile(
            kSize: kSize,
            label: 'Manage Address',
            onTap: () {
              context.read<AddressBloc>().add(const AddressEvent.getAddress(limit: 0, skip: 0, id: ""));
              Navigator.pushNamed(context, "/manageAddress");
            },
          ),
          profileDataTile(
            kSize: kSize,
            label: 'Service History',
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, RouterConstants.bottomNavRoute, (route) => false, arguments: 1);
            },
          ),
          profileDataTile(
            kSize: kSize,
            label: 'About Us',
            onTap: () {},
          ),
          profileDataTile(
            kSize: kSize,
            label: 'Help and Support',
            onTap: () {},
          ),
          profileDataTile(
            kSize: kSize,
            label: 'Privacy Policy',
            onTap: () {},
          ),
          profileDataTile(
            kSize: kSize,
            label: 'Terms & Conditions',
            onTap: () {},
          ),
          SizedBox(
            height: kSize.height * .015,
          ),
          TextButton(
              style: TextButton.styleFrom(foregroundColor: AppColors.redColor, padding: const EdgeInsets.symmetric(horizontal: 0)),
              onPressed: () {},
              child: Text(
                'Log out',
                style: AppTypography.soraRegular.copyWith(color: AppColors.redColor, fontSize: kSize.height * 0.019),
              ))
        ],
      ),
    );
  }

  Widget profileDataTile({required Size kSize, Function()? onTap, required String label}) {
    return Column(
      children: [
        InkWell(
          highlightColor: AppColors.transparent,
          splashColor: AppColors.transparent,
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: kSize.height * 0.013),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: AppTypography.soraRegular.copyWith(fontSize: kSize.height * 0.019, color: AppColors.blueGrey1),
                ),
                Image.asset(AppImages.arrowLeftIcon, height: kSize.height * .0167),
              ],
            ),
          ),
        ),
        const Divider(
          color: AppColors.dividerColor,
        )
      ],
    );
  }

  Widget bottomSheet() {
    final kSize = MediaQuery.of(context).size;
    return Container(
      width: kSize.width,
      color: AppColors.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.basePadding),
        child: Column(
          children: [
            Text(
              'Choose Profile',
              style: AppTypography.soraRegular.copyWith(
                fontSize: kSize.height * 0.026,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: kSize.height * 0.019,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    _getFromCamera(kSize);
                  },
                  icon: Icon(
                    Icons.camera_alt_rounded,
                    color: AppColors.primaryColor,
                    size: kSize.height * 0.033,
                  ),
                  label: Text(
                    'Camera',
                    style: AppTypography.soraRegular.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: kSize.height * 0.021,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    _getFromGallery(kSize);
                  },
                  icon: Icon(
                    Icons.image,
                    color: AppColors.primaryColor,
                    size: kSize.height * 0.033,
                  ),
                  label: Text(
                    'Gallery',
                    style: AppTypography.soraRegular.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: kSize.height * 0.021,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Get from Camera
  _getFromCamera(Size kSize) async {
    Navigator.pop(context);
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      final croppedImage = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        uiSettings: [AndroidUiSettings(statusBarColor: AppColors.primaryColor, toolbarTitle: 'Crop Image'), IOSUiSettings(title: 'Crop Image')],
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );
      setState(() {
        imageFile = croppedImage;
      });
    }
  }

  _getFromGallery(Size kSize) async {
    Navigator.pop(context);
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      final croppedImage = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        uiSettings: [
          AndroidUiSettings(
            statusBarColor: AppColors.primaryColor,
            toolbarTitle: 'Crop Image',
          ),
          IOSUiSettings(title: 'Crop Image')
        ],
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      );
      setState(() {
        imageFile = croppedImage;
      });
    }
  }
}
