.class public Lcom/android/lg/rambar/aokpram;
.super Landroid/widget/FrameLayout;
.source "aokpram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lg/rambar/aokpram$100000000;,
        Lcom/android/lg/rambar/aokpram$MyExternalPreferencesObserver;
    }
.end annotation


# static fields
.field static final PAGE_SIZE:J = 0x1000L

.field private static mAm:Landroid/app/ActivityManager;

.field private static mBackgroundProcessText:Landroid/widget/TextView;

.field private static mForegroundProcessText:Landroid/widget/TextView;

.field private static mGbContext:Landroid/content/Context;

.field private static mMemInfoReader:Lcom/android/lg/rambar/MemInfoReader;

.field private static mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;


# instance fields
.field private dedi:I

.field private dedi2:I

.field private dedi3:I

.field private dedi4:I

.field private dedi5:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v0

    move-object v3, v10

    new-instance v10, Lcom/android/lg/rambar/MemInfoReader;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/android/lg/rambar/MemInfoReader;-><init>()V

    sput-object v10, Lcom/android/lg/rambar/aokpram;->mMemInfoReader:Lcom/android/lg/rambar/MemInfoReader;

    move-object v10, v0

    invoke-direct {v10}, Lcom/android/lg/rambar/aokpram;->setupExternalSettingsObserver()V

    new-instance v10, Lcom/android/lg/rambar/LinearColorBar;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/android/lg/rambar/LinearColorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    sget-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/lg/rambar/LinearColorBar;->setOrientation(I)V

    sget-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/lg/rambar/LinearColorBar;->setClipChildren(Z)V

    sget-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/lg/rambar/LinearColorBar;->setClipToPadding(Z)V

    sget-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/lg/rambar/LinearColorBar;->setPadding(IIII)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v6, v10

    sget-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    move-object v11, v6

    invoke-virtual {v10, v11}, Lcom/android/lg/rambar/LinearColorBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ram"

    const-string v13, "layout"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/lg/rambar/aokpram;->dedi:I

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "foregroundText"

    const-string v13, "id"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/lg/rambar/aokpram;->dedi2:I

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "backgroundText"

    const-string v13, "id"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/lg/rambar/aokpram;->dedi3:I

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "service_foreground_processes"

    const-string v13, "string"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/lg/rambar/aokpram;->dedi4:I

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "service_background_processes"

    const-string v13, "string"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/lg/rambar/aokpram;->dedi5:I

    move-object v10, v1

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    move-object v7, v10

    move-object v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/android/lg/rambar/aokpram;->dedi:I

    sget-object v12, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    move-object v10, v3

    sget-object v11, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    move-object v11, v0

    iget v11, v11, Lcom/android/lg/rambar/aokpram;->dedi2:I

    invoke-virtual {v10, v11}, Lcom/android/lg/rambar/LinearColorBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sput-object v10, Lcom/android/lg/rambar/aokpram;->mForegroundProcessText:Landroid/widget/TextView;

    sget-object v10, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    move-object v11, v0

    iget v11, v11, Lcom/android/lg/rambar/aokpram;->dedi3:I

    invoke-virtual {v10, v11}, Lcom/android/lg/rambar/LinearColorBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sput-object v10, Lcom/android/lg/rambar/aokpram;->mBackgroundProcessText:Landroid/widget/TextView;

    move-object v10, v1

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    sput-object v10, Lcom/android/lg/rambar/aokpram;->mAm:Landroid/app/ActivityManager;

    new-instance v10, Landroid/os/Handler;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    move-object v8, v10

    move-object v10, v8

    new-instance v11, Lcom/android/lg/rambar/aokpram$100000000;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lcom/android/lg/rambar/aokpram$100000000;-><init>(Lcom/android/lg/rambar/aokpram;Landroid/os/Handler;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v10

    return-void
.end method

.method static synthetic access$L1000000()Landroid/widget/TextView;
    .locals 3

    sget-object v2, Lcom/android/lg/rambar/aokpram;->mBackgroundProcessText:Landroid/widget/TextView;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000001()Landroid/widget/TextView;
    .locals 3

    sget-object v2, Lcom/android/lg/rambar/aokpram;->mForegroundProcessText:Landroid/widget/TextView;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000002()Landroid/app/ActivityManager;
    .locals 3

    sget-object v2, Lcom/android/lg/rambar/aokpram;->mAm:Landroid/app/ActivityManager;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000003()Lcom/android/lg/rambar/MemInfoReader;
    .locals 3

    sget-object v2, Lcom/android/lg/rambar/aokpram;->mMemInfoReader:Lcom/android/lg/rambar/MemInfoReader;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000005()Lcom/android/lg/rambar/LinearColorBar;
    .locals 3

    sget-object v2, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/android/lg/rambar/aokpram;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/android/lg/rambar/aokpram;->dedi4:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000010(Lcom/android/lg/rambar/aokpram;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/android/lg/rambar/aokpram;->dedi5:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$124(Lcom/android/lg/rambar/aokpram;)Landroid/content/Context;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/widget/TextView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/lg/rambar/aokpram;->mBackgroundProcessText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000001(Landroid/widget/TextView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/lg/rambar/aokpram;->mForegroundProcessText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000002(Landroid/app/ActivityManager;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/lg/rambar/aokpram;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/android/lg/rambar/MemInfoReader;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/lg/rambar/aokpram;->mMemInfoReader:Lcom/android/lg/rambar/MemInfoReader;

    return-void
.end method

.method static synthetic access$S1000005(Lcom/android/lg/rambar/LinearColorBar;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/android/lg/rambar/aokpram;->mRamUsageBar:Lcom/android/lg/rambar/LinearColorBar;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/android/lg/rambar/aokpram;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/android/lg/rambar/aokpram;->dedi4:I

    return-void
.end method

.method static synthetic access$S1000010(Lcom/android/lg/rambar/aokpram;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/android/lg/rambar/aokpram;->dedi5:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$124(Lcom/android/lg/rambar/aokpram;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/view/View;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ngumpet()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aokpram"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    move v1, v3

    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/lg/rambar/aokpram;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/lg/rambar/aokpram;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupExternalSettingsObserver()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    new-instance v4, Ljava/util/LinkedList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v4

    move-object v4, v1

    new-instance v5, Lcom/android/lg/rambar/aokpram$MyExternalPreferencesObserver;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/lg/rambar/aokpram;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v9, "aokpram"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/lg/rambar/aokpram$MyExternalPreferencesObserver;-><init>(Lcom/android/lg/rambar/aokpram;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lg/rambar/aokpram$MyExternalPreferencesObserver;

    invoke-virtual {v4}, Lcom/android/lg/rambar/aokpram$MyExternalPreferencesObserver;->observe()V

    goto :goto_0
.end method


# virtual methods
.method public externalPreferencesObserverCallback(Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "aokpram"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Lcom/android/lg/rambar/aokpram;->ngumpet()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method
