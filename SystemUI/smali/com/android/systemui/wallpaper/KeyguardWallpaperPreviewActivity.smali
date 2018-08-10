.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;
.super Landroid/app/Activity;
.source "KeyguardWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;,
        Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;
    }
.end annotation


# static fields
.field private static final INFINITY_COLOR_LIST:[Ljava/lang/String;

.field private static final INFINITY_COMPONENT_LIST:[Landroid/content/ComponentName;

.field private static sIsActivityAlive:Z


# instance fields
.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mBackgroundImageViewHome:Landroid/widget/ImageView;

.field private mBackgroundImageViewLock:Landroid/widget/ImageView;

.field private mCapturedImageView:Landroid/widget/ImageView;

.field private mCheckBoxMotionEffect:Landroid/widget/CheckBox;

.field private mColorInfo:Ljava/lang/String;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mInfinityCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

.field private mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

.field private mIsAodAvailable:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/ViewGroup;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSensorEnabled:Z

.field private mService:Landroid/app/IWallpaperManager;

.field private mSetAsWallpaper:Z

.field private mSetAsWallpaperButton:Landroid/widget/FrameLayout;

.field private mTextMotionEffect:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mWallpaperDescription:Landroid/widget/TextView;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperType:I

.field private mWallpaperTypeIcon:Landroid/widget/ImageView;

.field private mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    return-object v0
.end method

.method static synthetic -get15()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAttachedMobileKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->doSetAsWallpaper()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->loadAndInitInfinityBackground()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->onInfinityModeChanged(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sendSamsungAnalyticsEventLog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->showConfirmDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "black"

    aput-object v1, v0, v4

    const-string/jumbo v1, "orchid"

    aput-object v1, v0, v5

    const-string/jumbo v1, "silver"

    aput-object v1, v0, v6

    const-string/jumbo v1, "blue"

    aput-object v1, v0, v7

    const-string/jumbo v1, "gold"

    aput-object v1, v0, v8

    const-string/jumbo v1, "pink"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "purple"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COLOR_LIST:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.infinity.InfinityWallpaperBlack"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.infinity.InfinityWallpaperOrchid"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.infinity.InfinityWallpaperSilver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.infinity.InfinityWallpaperBlue"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.infinity.InfinityWallpaperGold"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.infinity.InfinityWallpaperPink"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.infinity.InfinityWallpaperPurple"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COMPONENT_LIST:[Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 4

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "dismissProgressDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$12;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private doSetAsWallpaper()V
    .locals 13

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "doSetAsWallpaper()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "isWallpaperChangeAllowed"

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "false"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1206ee

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "lockscreen_wallpaper_transparent"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    const-string/jumbo v0, "lockscreen_wallpaper"

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_statusbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_navigationbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1206ea

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "lockscreen_wallpaper_transparent"

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    const-string/jumbo v0, "lockscreen_wallpaper"

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_statusbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_navigationbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/app/WallpaperManager;->setPreloadWallpaper(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1206ea

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v0, "lockscreen_wallpaper_transparent"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    const-string/jumbo v0, "lockscreen_wallpaper"

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_statusbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_navigationbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1206ea

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->saveSensorEnable()V

    const-string/jumbo v0, "lockscreen_wallpaper_transparent"

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    const-string/jumbo v0, "android.wallpaper.settings_systemui_transparency"

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    const-string/jumbo v0, "lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_statusbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "white_lockscreen_navigationbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string/jumbo v0, "need_dark_font"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v9

    const-string/jumbo v0, "need_dark_statusbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v11

    const-string/jumbo v0, "need_dark_navigationbar"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v10

    if-nez v9, :cond_3

    if-nez v11, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    const/4 v8, 0x0

    :goto_2
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COLOR_LIST:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_5

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COLOR_LIST:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COMPONENT_LIST:[Landroid/content/ComponentName;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)Z

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1206eb

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1206ec

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getContentViewId()I
    .locals 1

    const v0, 0x7f0d009f

    return v0
.end method

.method private getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWallpaperTypeInteger(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", locType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cinematic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    if-eqz p2, :cond_4

    const-string/jumbo v0, "preload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_2
    const-string/jumbo v0, "animated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "download"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_3
    const-string/jumbo v0, "infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    const-string/jumbo v0, "preload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method private init()V
    .locals 5

    const v4, 0x7f1206f3

    const/4 v3, 0x5

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init(): mWallpaperType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initCapturedImageView()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$6;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTextMotionEffect:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTextMotionEffect:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$8;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f080349

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f080347

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f1206f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f080348

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAodAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    const v1, 0x7f12052b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTextMotionEffect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    const v1, 0x7f12052c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAndShowProgressDialog()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initAndShowProgressDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f1300b8

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$11;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private initBackgroundImageView(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 20

    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v5, "initBackgroundImageView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v5, "initBackgroundImageView(): wallpaperBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eqz v11, :cond_1

    if-nez v10, :cond_2

    :cond_1
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initBackgroundImageView(): bitmapWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bitmapHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v18

    if-eqz v19, :cond_3

    if-nez v18, :cond_4

    :cond_3
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initBackgroundImageView(): viewWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", viewHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :cond_4
    const/4 v15, 0x0

    mul-int v4, v11, v18

    mul-int v5, v19, v10

    if-le v4, v5, :cond_5

    move/from16 v0, v18

    int-to-float v4, v0

    int-to-float v5, v10

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v15

    :goto_0
    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initBackgroundImageView: scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v4, v11, v15

    mul-int v5, v10, v15

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v4, v15

    int-to-float v5, v15

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move/from16 v0, v19

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    move/from16 v0, v18

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    const v4, 0x3fa66666    # 1.3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    const v4, 0x3fa66666    # 1.3f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-virtual {v12, v4}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setRadius(F)V

    const/16 v4, 0x34

    invoke-static {v4}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const v7, 0x3f5c28f6    # 0.86f

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    const/16 v4, 0x34

    invoke-static {v4}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    invoke-virtual {v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    const/4 v4, 0x0

    const v5, 0x3e851eb8    # 0.26f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    new-instance v14, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v14}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    invoke-virtual {v14}, Lcom/samsung/android/graphics/SemImageFilterSet;->clearFilters()V

    invoke-virtual {v14, v12}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    invoke-virtual {v14, v2}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    invoke-virtual {v14, v3}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    return-void

    :cond_5
    move/from16 v0, v19

    int-to-float v4, v0

    int-to-float v5, v11

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v15

    goto/16 :goto_0
.end method

.method private initCapturedImageView()V
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v7, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v8, "initCapturedImageView()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/storage/emulated/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v7, "KeyguardWallpaperPreviewActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initCapturedImageView(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isn\'t exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v7, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initPreviewArea()V
    .locals 14

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea(): mPackageName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea(): mColorInfo is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :cond_2
    new-instance v7, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    move-object v11, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea(): mPackageName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "initPreviewArea(): mColorInfo is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initSensorEnable()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "infinity_motion_effect"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setHomeSensorEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    goto :goto_1
.end method

.method private isAodAvailable()Z
    .locals 10

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "isAodAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.samsung.android.app.aodservice.provider/settings/aod_infinity_wallpaper"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAodAvailable(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isAttachedMobileKeyboard()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is_16_9_Display()Z
    .locals 5

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41100000    # 9.0f

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v2

    div-float v2, v1, v4

    div-float v2, v0, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    div-float v2, v0, v4

    div-float v2, v1, v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    div-float v2, v1, v4

    div-float v2, v0, v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    div-float v2, v1, v4

    div-float v2, v0, v2

    const/high16 v3, 0x41400000    # 12.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private loadAndInitInfinityBackground()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string/jumbo v7, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v8, "loadAndInitInfinityBackground()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "keyguard_default_wallpaper"

    const-string/jumbo v2, "default_wallpaper"

    sget-object v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COLOR_LIST:[Ljava/lang/String;

    aget-object v7, v7, v10

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "drawable"

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.wallpaper.res"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "drawable"

    const-string/jumbo v9, "com.samsung.android.wallpaper.res"

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v7, "KeyguardWallpaperPreviewActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "homeDrawableID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v5, "loadAnimatedBackgroundBitmap()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lockscreen_wallpaper"

    const-string/jumbo v6, "drawable"

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "KeyguardWallpaperPreviewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadAnimatedBackgroundBitmap(): NameNotFoundException mPackageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onInfinityModeChanged(I)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string/jumbo v3, "KeyguardWallpaperPreviewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInfinityModeChanged() mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v3, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v4, "onInfinityModeChanged(): Invalid mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private saveSensorEnable()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "infinity_motion_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveSensorEnable() mSensorEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendSamsungAnalyticsEventLog()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAodAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "a"

    :goto_0
    const-string/jumbo v2, "700"

    invoke-static {v2, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KeyguardWallpaperPreviewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableInfinityAOD : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "b"

    goto :goto_0
.end method

.method private setSystemSettings(Ljava/lang/String;II)Z
    .locals 3

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemSettings(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setSystemSettingsForUser(Ljava/lang/String;II)Z
    .locals 4

    const/4 v3, -0x2

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemSettingsForUser(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showConfirmDialog()V
    .locals 3

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "showConfirmDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1206f0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$13;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const v2, 0x7f1206ef

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$14;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updatePreviewContainerSize()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->is_16_9_Display()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAttachedMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAttachedMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070281

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070284

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "themestore"

    const-string/jumbo v2, "from"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "onCreate(): Invalid intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "locType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "onCreate(): Do not support motion wallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    :cond_2
    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "onCreate(): Do not support infinity wallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    :cond_3
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "colorInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getContentViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    if-nez v1, :cond_5

    :cond_4
    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate(): mWallpaperManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->finish()V

    :cond_5
    const v1, 0x7f0a0439

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a03ec

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a03ea

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    const v1, 0x7f0a0538

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0a058e

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a00c7

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    const v1, 0x7f0a0071

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    const v1, 0x7f0a0073

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    const v1, 0x7f0a0072

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    const v1, 0x7f0a058d

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    const v1, 0x7f0a04b5

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    const v1, 0x7f0a00dc

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    const v1, 0x7f0a00de

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTextMotionEffect:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->updatePreviewContainerSize()V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initAndShowProgressDialog()V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    sput-boolean v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->onPause()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAodAvailable()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    const v2, 0x7f12052b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {v1, v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setIsAodAvailable(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->onResume()V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initSensorEnable()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    const v2, 0x7f12052c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
