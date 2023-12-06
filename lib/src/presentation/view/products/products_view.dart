import 'package:coofix/src/application/prodect_bloc/prodect_bloc.dart';
import 'package:coofix/src/application/prodect_bloc/prodect_state.dart';
import 'package:coofix/src/presentation/core/constants/constants.dart';
import 'package:coofix/src/presentation/core/constants/strings.dart';
import 'package:coofix/src/presentation/core/theme/typography.dart';
import 'package:coofix/src/presentation/core/values/no_glow_scroll_behaviour.dart';
import 'package:coofix/src/presentation/view/products/widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  void initState() {
    context
        .read<ProdectBloc>()
        .add(  ProdectEvent.getProdects(skip: 0, limit: 0, id: ""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return ScrollConfiguration(
      behavior: NoGlowScrollBehaviour(),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppConstants.basePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kSize.height * .05,
            ),
            Text(
              AppStrings.myProducts,
              style: AppTypography.soraSemiBold
                  .copyWith(fontSize: kSize.height * 0.028),
            ),
            SizedBox(
              height: kSize.height * .015,
            ),
            BlocBuilder<ProdectBloc, ProdectState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.prodectList.length,
                    padding: EdgeInsets.only(bottom: kSize.height * .1),
                    itemBuilder: (context, index) {
                      return const ProductsTile();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
