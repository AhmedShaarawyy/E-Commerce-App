import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?  Center(child:Lottie.asset(AppImageAssets.loadingAnimation,width: 250,height: 250) )
        : statusRequest == StatusRequest.offlineFailure
            ?  Center(child:Lottie.asset(AppImageAssets.offlineAnimation,width: 250,height: 250)
              )
            : statusRequest == StatusRequest.serverFailure
                ?  Center(child:Lottie.asset(AppImageAssets.serverAnimation,width: 250,height: 250)
                  )
                : statusRequest == StatusRequest.failure
                    ?  Center(child:Lottie.asset(AppImageAssets.noDataAnimation,width: 250,height: 250)
                      )
                    : widget;
  }
  
}

class HandlingDataRequest extends StatelessWidget {
  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?  Center(child:Lottie.asset(AppImageAssets.loadingAnimation,width: 250,height: 250) )
        : statusRequest == StatusRequest.offlineFailure
            ?  Center(child:Lottie.asset(AppImageAssets.offlineAnimation,width: 250,height: 250)
              )
            : statusRequest == StatusRequest.serverFailure
                ?  Center(child:Lottie.asset(AppImageAssets.serverAnimation,width: 250,height: 250)
                  )
                    : widget;
  }
  
}
