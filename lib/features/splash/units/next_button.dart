part of '../view.dart';

class NextButtonUnit extends StatelessWidget {
  static PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return OnBoardConsumer(
      builder: (context, ref, child) {
        final state = ref.watch(onBoardStateProvider);

        return TextButton(
          onPressed: () => _onNextTap(state),
          child: Text(
            state.isLastPage ? "Register" : "Next",
            style: fieldTextStyle(kWhiteClr),
          ),
        );
      },
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      MagicRoute.navigateAndPopAll(RegisterView());
    }
  }
}
