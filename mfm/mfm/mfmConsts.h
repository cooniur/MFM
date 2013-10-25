//
//  mfmConsts.h
//  mfm
//
//  Created by Tongliang Liu on 10/24/13.
//  Copyright (c) 2013 cooniur. All rights reserved.
//

#ifndef mfm_mfmConsts_h
#define mfm_mfmConsts_h

/**
 Segue Identifiers
 */
#define MFM_SEGUE_TO_CONFRIM_PRICE		@"segueToConfirmPrice"
#define MFM_SEGUE_TO_SWIPE_CARD			@"segueToSwipeCard"
#define MFM_SEGUE_TO_ENTER_PIN			@"segueToEnterPIN"
#define MFM_SEGUE_TO_MAKING_PAYMENT		@"segueToMakingPayment"
#define MFM_SEGUE_TO_PAYMENT_SUCCEEDED	@"segueToPaymentSucceeded"
#define MFM_SEGUE_TO_PAYMENT_FAILED		@"segueToPaymentFailed"

/**
 Alert Messages
 */
#define MFM_MSG_CANCEL_PAYMENT			@"Do you want to cancel this payment?"
#define MFM_MSG_AGREE_PRICE				@"By selecting YES, you will agree with the price set by the vendor."
#define MFM_MSG_CANNOT_READ_CARD		@"Cannot read card. Please swipe card again."


#define MFM_PIN_FIXED_LENGTH			(4)

#endif
