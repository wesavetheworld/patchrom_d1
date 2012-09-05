.class public Lcom/android/hwcamera/ParametersManager;
.super Ljava/lang/Object;
.source "ParametersManager.java"


# static fields
.field private static final AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final BRIGHTNESS_DEFAULT:Ljava/lang/String; = "2"

.field private static final CONTRAST_DEFAULT:Ljava/lang/String; = "2"

.field private static final EXPOSURE_DEFAULT:Ljava/lang/String; = "0"

.field private static final FLASH_OFF:Ljava/lang/String; = "off"

.field private static final NONE_VALUE:Ljava/lang/String; = "none"

.field private static final OFF_ZERO_VALUE:Ljava/lang/String; = "0"

.field private static final SATURATION_DEFAULT:Ljava/lang/String; = "2"


# instance fields
.field private mAutoFocusValue:Ljava/lang/String;

.field private mBrightnessValue:Ljava/lang/String;

.field private mColorEffectValue:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContrastValue:Ljava/lang/String;

.field private mDistortionValue:Ljava/lang/String;

.field private mExposureValue:Ljava/lang/String;

.field private mFaceDecetionValue:Ljava/lang/String;

.field private mFlashValue:Ljava/lang/String;

.field private mIsImageCaptureIntent:Z

.field private mIsoValue:Ljava/lang/String;

.field private mPictureSizevalue:Ljava/lang/String;

.field private mPreference:Lcom/android/hwcamera/ComboPreferences;

.field private mRedEyeReductionValue:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mReviewvalue:Ljava/lang/String;

.field private mSaturationValue:Ljava/lang/String;

.field private mScenceDefaultVaule:Ljava/lang/String;

.field private mSceneValue:Ljava/lang/String;

.field private mShootModeIndex:I

.field private mSteadyValue:Ljava/lang/String;

.field private mTimervalue:Ljava/lang/String;

.field private mWhiteBalance:Ljava/lang/String;

.field private mWideScreenvalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V
    .locals 2
    .parameter "context"
    .parameter "preferences"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    .line 36
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/android/hwcamera/ParametersManager;->mIsImageCaptureIntent:Z

    .line 52
    iput-object p1, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    .line 54
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    .line 55
    return-void
.end method

.method private getFlashValueByScene(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 295
    const-string v0, "night"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "night-portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fireworks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "theatre"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private setParameterByDistortion()V
    .locals 1

    .prologue
    .line 307
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 308
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 309
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 310
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 311
    return-void
.end method

.method private setParameterByEffect()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 271
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWhiteBalance:Ljava/lang/String;

    .line 272
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 273
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 274
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 275
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 276
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 277
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private setParameterByScene()V
    .locals 1

    .prologue
    .line 281
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWhiteBalance:Ljava/lang/String;

    .line 282
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 283
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    .line 284
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    .line 285
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 286
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Lcom/android/hwcamera/ParametersManager;->getSceneValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/ParametersManager;->getFlashValueByScene(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private setParametersByShootmode(I)V
    .locals 4
    .parameter "index"

    .prologue
    const v3, 0x7f0c0039

    .line 152
    const-string v0, "shootmode"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 265
    :goto_0
    :pswitch_0
    return-void

    .line 157
    :pswitch_1
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 158
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 160
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 162
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 163
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 168
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 169
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 170
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 177
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 178
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 179
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 180
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 181
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 182
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    goto :goto_0

    .line 186
    :pswitch_4
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 187
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 188
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 189
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 190
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 191
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 192
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    goto :goto_0

    .line 196
    :pswitch_5
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 197
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 198
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 199
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 200
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 201
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 202
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 203
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 204
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_widescreen_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "2592x1458"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 210
    :cond_0
    const-string v0, "2592x1944"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :pswitch_6
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 217
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 218
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 219
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 220
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 221
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 222
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 223
    const-string v0, "2048x1536"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    .line 224
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWideScreenvalue:Ljava/lang/String;

    .line 225
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 226
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 234
    :pswitch_7
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 235
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 236
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 237
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_widescreen_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "2048x1152"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 242
    :cond_1
    const-string v0, "2048x1536"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 250
    :pswitch_8
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 251
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 252
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 256
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 257
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    .line 258
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    .line 259
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 260
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 261
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private setSettingValueFromPreferences()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_distortion_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_widescreen_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWideScreenvalue:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_timer_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_review_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_auto_focusmode_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_facedetection_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_redeyedetection_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWhiteBalance:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_contrast_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_exposure_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_brightness_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_saturation_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    .line 351
    return-void
.end method

.method private translateShootValueToIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, index:I
    const-string v1, "single"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    const/4 v0, 0x0

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    const-string v1, "hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    const/4 v0, 0x4

    goto :goto_0

    .line 358
    :cond_2
    const-string v1, "burst"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    const/4 v0, 0x3

    goto :goto_0

    .line 360
    :cond_3
    const-string v1, "panorama"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    const/4 v0, 0x1

    goto :goto_0

    .line 362
    :cond_4
    const-string v1, "beauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 363
    const/4 v0, 0x6

    goto :goto_0

    .line 364
    :cond_5
    const-string v1, "group"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    const/4 v0, 0x2

    goto :goto_0

    .line 366
    :cond_6
    const-string v1, "smile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 367
    const/4 v0, 0x5

    goto :goto_0

    .line 368
    :cond_7
    const-string v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 369
    const/4 v0, 0x7

    goto :goto_0

    .line 370
    :cond_8
    const-string v1, "zsl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 371
    const/16 v0, 0x8

    goto :goto_0

    .line 372
    :cond_9
    const-string v1, "lowlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public getAutoFocusValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    return-object v0
.end method

.method public getBrightnessValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    return-object v0
.end method

.method public getColorEffectValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    return-object v0
.end method

.method public getContrastValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDistortionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExposureValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceDecetionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureSizevalueValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    return-object v0
.end method

.method public getRedEyeReductionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getSaturationValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    return-object v0
.end method

.method public getScenceDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    return-object v0
.end method

.method public getShootingmodeIndex()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    return v0
.end method

.method public getSteadyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTimerValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalanceValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWhiteBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getWideScreenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWideScreenvalue:Ljava/lang/String;

    return-object v0
.end method

.method public setConflitParameters()V
    .locals 5

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setSettingValueFromPreferences()V

    .line 124
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedShootModeValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    iget-boolean v1, p0, Lcom/android/hwcamera/ParametersManager;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_4

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    .line 132
    :goto_0
    iget v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    invoke-direct {p0, v1}, Lcom/android/hwcamera/ParametersManager;->setParametersByShootmode(I)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ParametersManager;->getColorEffectValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setParameterByEffect()V

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ParametersManager;->getDistortionValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setParameterByDistortion()V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/ParametersManager;->getSceneValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setParameterByScene()V

    .line 147
    :cond_3
    return-void

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_shootmode_key"

    iget-object v3, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c00d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ParametersManager;->translateShootValueToIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    goto :goto_0
.end method

.method public setImageCaptureIntent(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/hwcamera/ParametersManager;->mIsImageCaptureIntent:Z

    .line 118
    return-void
.end method

.method public setScenceDefaultValue(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 380
    .local v0, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 384
    const-string v1, "off"

    iput-object v1, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    goto :goto_0
.end method
