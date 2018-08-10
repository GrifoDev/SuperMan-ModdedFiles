.class public Landroid/app/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$HideWindowListener;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final ANIM_CLIP_REVEAL:I = 0xb

.field public static final ANIM_CUSTOM:I = 0x1

.field public static final ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final ANIM_CUSTOM_SCALE_DOWN:I = 0x3ea

.field public static final ANIM_CUSTOM_SCALE_UP:I = 0x3e9

.field public static final ANIM_DEFAULT:I = 0x6

.field public static final ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SCALE_UP:I = 0x2

.field public static final ANIM_SCENE_TRANSITION:I = 0x5

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field private static final KEY_ACTIVE_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isActiveLaunch"

.field private static final KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final KEY_ANIM_HOME_ITEM:Ljava/lang/String; = "android:activity.animHomeItem"

.field public static final KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final KEY_DOCK_CREATE_MODE:Ljava/lang/String; = "android:activity.dockCreateMode"

.field private static final KEY_DOCK_SIZE_TYPE:Ljava/lang/String; = "android.activity.DockSizeType"

.field private static final KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field private static final KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field public static final KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field private static final KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final KEY_LAUNCH_STACK_ID:Ljava/lang/String; = "android.activity.launchStackId"

.field private static final KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field public static final KEY_STARTED_BY_MDM_ADMIN:Ljava/lang/String; = "edm:activity.startedByMDMAdmin"

.field private static final KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field private static final KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field private mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mAnimationType:I

.field private mAppVerificationBundle:Landroid/os/Bundle;

.field private mCustomEnterResId:I

.field private mCustomExitResId:I

.field private mCustomInPlaceResId:I

.field private mDockCreateMode:I

.field private mDockedStackSizeType:I

.field private mExitCoordinatorIndex:I

.field private mHeight:I

.field private mIsActiveApplaunch:Z

.field private mIsHomeItem:Z

.field private mIsReturning:Z

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchDisplayId:I

.field private mLaunchStackId:I

.field private mLaunchTaskId:I

.field private mPackageName:Ljava/lang/String;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mRotationAnimationHint:I

.field private mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mStartX:I

.field private mStartY:I

.field private mStartedByMDMAdmin:Z

.field private mTaskOverlay:Z

.field private mTaskOverlayCanResume:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransitionReceiver:Landroid/os/ResultReceiver;

.field private mUsageTimeReport:Landroid/app/PendingIntent;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    iput v1, p0, Landroid/app/ActivityOptions;->mDockedStackSizeType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    iput v5, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    iput v6, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    iput v5, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    iput v6, p0, Landroid/app/ActivityOptions;->mDockedStackSizeType:I

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->setDefusable(Z)V

    const-string/jumbo v4, "android:activity.packageName"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v4, "android:activity.usageTimeReport"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v4, "android:activity.launchBounds"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    const-string/jumbo v4, "android:activity.animType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iget v4, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    sparse-switch v4, :sswitch_data_0

    :goto_1
    const-string/jumbo v4, "android.activity.launchDisplayId"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    const-string/jumbo v4, "android.activity.launchStackId"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    const-string/jumbo v4, "android.activity.launchTaskId"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    const-string/jumbo v4, "android.activity.taskOverlay"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    const-string/jumbo v4, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    const-string/jumbo v4, "android:activity.dockCreateMode"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    const-string/jumbo v4, "android:activity.animSpecs"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "android:activity.animSpecs"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-ltz v2, :cond_1

    iget-object v5, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v4, v3, v2

    check-cast v4, Landroid/view/AppTransitionAnimationSpec;

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ActivityOptions"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "android:activity.animEnterRes"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string/jumbo v4, "android:activity.animExitRes"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    const-string/jumbo v4, "android:activity.animStartListener"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v4, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v4, "android:activity.animStartX"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mStartX:I

    const-string/jumbo v4, "android:activity.animStartY"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mStartY:I

    const-string/jumbo v4, "android:activity.animWidth"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mWidth:I

    const-string/jumbo v4, "android:activity.animHeight"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mHeight:I

    const-string/jumbo v4, "android:activity.animHomeItem"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v4, "android:activity.animThumbnail"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicBuffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    :cond_0
    const-string/jumbo v4, "android:activity.animStartX"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mStartX:I

    const-string/jumbo v4, "android:activity.animStartY"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mStartY:I

    const-string/jumbo v4, "android:activity.animWidth"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mWidth:I

    const-string/jumbo v4, "android:activity.animHeight"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mHeight:I

    const-string/jumbo v4, "android:activity.animStartListener"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v4, "android:activity.transitionCompleteListener"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    const-string/jumbo v4, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    const-string/jumbo v4, "android:activity.sharedElementNames"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    const-string/jumbo v4, "android:activity.resultData"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    const-string/jumbo v4, "android:activity.resultCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mResultCode:I

    const-string/jumbo v4, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v4, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    :cond_2
    const-string/jumbo v4, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    const-string/jumbo v4, "android:instantapps.installerbundle"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "android:activity.specsFuture"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "android:activity.specsFuture"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    :cond_3
    const-string/jumbo v4, "edm:activity.startedByMDMAdmin"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    const-string/jumbo v4, "android:activity.isActiveLaunch"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    const-string/jumbo v4, "android.activity.DockSizeType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "android.activity.DockSizeType"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mDockedStackSizeType:I

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method

.method public static abort(Landroid/app/ActivityOptions;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private static makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz p8, :cond_0

    const/16 v2, 0x8

    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0

    :cond_0
    const/16 v2, 0x9

    goto :goto_0
.end method

.method public static makeBasic()Landroid/app/ActivityOptions;
    .locals 1

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/16 v2, 0xb

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-direct {v0, p3, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method

.method public static makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "You must specify a valid animation."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return-object v0
.end method

.method public static makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/16 v1, 0x8

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0

    :cond_0
    const/16 v1, 0x9

    goto :goto_0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput v3, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    new-array v1, v3, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    invoke-static {p0, v1, v0, v2, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    return-object v0
.end method

.method static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    iput v2, p2, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v2, 0x5

    iput v2, p2, Landroid/app/ActivityOptions;->mAnimationType:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_3

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v9, v2, :cond_3

    aget-object v10, p4, v9

    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Shared element name must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Shared element must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object v6, v5

    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v1, p2, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v5, p2, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    if-nez p0, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p2, Landroid/app/ActivityOptions;->mIsReturning:Z

    if-nez p0, :cond_5

    const/4 v2, -0x1

    iput v2, p2, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    :goto_2
    return-object v1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    iput v2, p2, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_2
.end method

.method public static makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    return-object v0
.end method

.method private static makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/4 v2, 0x3

    :goto_0
    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 2

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static semMakeCustomScaleDownAnimation(IIII)Landroid/app/ActivityOptions;
    .locals 4

    const-string/jumbo v1, "ActivityOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semMakeCustomScaleDownAnimation,  startX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", startY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    iput p2, v0, Landroid/app/ActivityOptions;->mStartX:I

    iput p3, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p0, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p1, v0, Landroid/app/ActivityOptions;->mHeight:I

    return-object v0
.end method

.method public static semMakeCustomScaleUpAnimation(Landroid/view/View;II)Landroid/app/ActivityOptions;
    .locals 5

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x3e9

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p1, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p2, v0, Landroid/app/ActivityOptions;->mHeight:I

    const-string/jumbo v2, "ActivityOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semMakeCustomScaleUpAnimation, width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static semMakeCustomScaleUpAnimation(Landroid/view/View;IIZ)Landroid/app/ActivityOptions;
    .locals 5

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x3e9

    iput v2, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    iput p1, v0, Landroid/app/ActivityOptions;->mWidth:I

    iput p2, v0, Landroid/app/ActivityOptions;->mHeight:I

    iput-boolean p3, v0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    const-string/jumbo v2, "ActivityOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semMakeCustomScaleUpAnimation, width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mStartY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", opts.mIsHomeItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    :cond_0
    return-void
.end method

.method private setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    :cond_0
    return-void
.end method

.method public static varargs startSharedElementAnimation(Landroid/view/Window;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v4, 0x0

    new-instance v3, Landroid/app/ActivityOptions;

    invoke-direct {v3}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-static {v4, p0, v3, v4, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/Window;Landroid/app/ActivityOptions;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/app/ActivityOptions$HideWindowListener;

    invoke-direct {v2, p0, v1}, Landroid/app/ActivityOptions$HideWindowListener;-><init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v1, v2}, Landroid/app/ExitTransitionCoordinator;->setHideSharedElementsCallback(Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;)V

    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    :cond_1
    return-object v3
.end method

.method public static stopSharedElementAnimation(Landroid/view/Window;)V
    .locals 4

    const v3, 0x1020258

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ExitTransitionCoordinator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    invoke-virtual {v1}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canTaskOverlayResume()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public forTargetActivity()Landroid/app/ActivityOptions;
    .locals 3

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getAnimationType()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public getCustomEnterResId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public getCustomExitResId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public getCustomInPlaceResId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public getDockCreateMode()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    return v0
.end method

.method public getDockedStackSizeType()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mDockedStackSizeType:I

    return v0
.end method

.method public getExitCoordinatorKey()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLaunchDisplayId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public getLaunchStackId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    return v0
.end method

.method public getLaunchTaskBehind()Z
    .locals 2

    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLaunchTaskId()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public getOnAnimationStartListener()Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getRotationAnimationHint()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public getSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public getStartX()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public getStartedByMDMAdmin()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mStartedByMDMAdmin:Z

    return v0
.end method

.method public getTaskOverlay()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/GraphicBuffer;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public isActiveApplaunch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    return v0
.end method

.method isCrossTask()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHomeItem()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    return v0
.end method

.method public isReturning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public popAppVerificationBundle()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-void
.end method

.method public setActiveApplaunch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    return-void
.end method

.method public setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDockCreateMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    return-void
.end method

.method public setDockedStackSizeType(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mDockedStackSizeType:I

    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return-object p0
.end method

.method public setLaunchStackId(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    return-void
.end method

.method public setLaunchTaskId(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return-void
.end method

.method public setRotationAnimationHint(I)V
    .locals 0

    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return-void
.end method

.method public setTaskOverlay(ZZ)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android:activity.packageName"

    iget-object v4, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "android:activity.launchBounds"

    iget-object v4, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string/jumbo v3, "android:activity.animType"

    iget v4, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "android:activity.usageTimeReport"

    iget-object v4, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    iget v3, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const-string/jumbo v2, "android.activity.launchDisplayId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android.activity.launchStackId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchStackId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android.activity.launchTaskId"

    iget v3, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android.activity.taskOverlay"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "android.activity.taskOverlayCanResume"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "android:activity.dockCreateMode"

    iget v3, p0, Landroid/app/ActivityOptions;->mDockCreateMode:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "android:activity.animSpecs"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_3
    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "android:activity.animationFinishedListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v3}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_4
    iget-object v2, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "android:activity.specsFuture"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-interface {v3}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_5
    const-string/jumbo v2, "android:activity.rotationAnimationHint"

    iget v3, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android:activity.isActiveLaunch"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mIsActiveApplaunch:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "android:instantapps.installerbundle"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    const-string/jumbo v2, "android.activity.DockSizeType"

    iget v3, p0, Landroid/app/ActivityOptions;->mDockedStackSizeType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :sswitch_0
    const-string/jumbo v3, "android:activity.animEnterRes"

    iget v4, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android:activity.animExitRes"

    iget v4, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android:activity.animStartListener"

    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v4, :cond_7

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_7
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "android:activity.animInPlaceRes"

    iget v3, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v2, "android:activity.animStartX"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android:activity.animStartY"

    iget v3, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android:activity.animWidth"

    iget v3, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android:activity.animHeight"

    iget v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android:activity.animHomeItem"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string/jumbo v3, "android:activity.animThumbnail"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_8
    :goto_1
    const-string/jumbo v3, "android:activity.animStartX"

    iget v4, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android:activity.animStartY"

    iget v4, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android:activity.animWidth"

    iget v4, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android:activity.animHeight"

    iget v4, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android:activity.animStartListener"

    iget-object v4, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v4, :cond_9

    iget-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_9
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, "ActivityOptions"

    const-string/jumbo v4, "Failed to copy thumbnail"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_b

    const-string/jumbo v2, "android:activity.transitionCompleteListener"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_b
    const-string/jumbo v2, "android:activity.transitionIsReturning"

    iget-boolean v3, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "android:activity.sharedElementNames"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "android:activity.resultData"

    iget-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "android:activity.resultCode"

    iget v3, p0, Landroid/app/ActivityOptions;->mResultCode:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android:activity.exitCoordinatorIndex"

    iget v3, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/app/ActivityOptions;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-object v3, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    iput v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-void

    :sswitch_0
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    :sswitch_1
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    goto :goto_0

    :sswitch_2
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsHomeItem:Z

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    :sswitch_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_3

    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    goto :goto_0

    :sswitch_4
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-object v3, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iget-object v1, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iget v1, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    iget v1, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method
