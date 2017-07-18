.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Landroid/app/Fragment;
.source "NavBarTuner.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/NavBarTuner$Dividers;,
        Lcom/android/systemui/tuner/NavBarTuner$Holder;,
        Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;
    }
.end annotation


# instance fields
.field private mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

.field private mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner;->getLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tuner/NavBarTuner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/NavBarTuner;->notifyChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/tuner/NavBarTuner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/NavBarTuner;->selectImage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private static getLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const-string/jumbo v0, "home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f029a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "back"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0299

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "recent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f029c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "space"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f0588

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "menu_ime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f0589

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0f0590

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v0, "key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0f0593

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object p0
.end method

.method private inflatePreview(Landroid/view/ViewGroup;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz v3, :cond_3

    iget v9, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v10, 0x258

    if-ge v9, v10, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    const/high16 v7, 0x3f400000    # 0.75f

    :goto_2
    iget v9, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    iput v9, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0400b5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/tuner/PreviewNavInflater;

    iput-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    iget-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    invoke-virtual {v9}, Lcom/android/systemui/tuner/PreviewNavInflater;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v9

    :goto_3
    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v2, :cond_0

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    const v10, 0x7f13027e

    invoke-virtual {v9, v10}, Lcom/android/systemui/tuner/PreviewNavInflater;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    const v10, 0x7f13027f

    invoke-virtual {v9, v10}, Lcom/android/systemui/tuner/PreviewNavInflater;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :goto_4
    return-void

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const v7, 0x3f733333    # 0.95f

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    const v10, 0x7f13027f

    invoke-virtual {v9, v10}, Lcom/android/systemui/tuner/PreviewNavInflater;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    const v10, 0x7f13027e

    invoke-virtual {v9, v10}, Lcom/android/systemui/tuner/PreviewNavInflater;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_4
.end method

.method private notifyChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mPreview:Lcom/android/systemui/tuner/PreviewNavInflater;

    const-string/jumbo v1, "sysui_nav_bar"

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->getNavString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/PreviewNavInflater;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private selectImage()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/tuner/KeycodeSelectionHelper;->getSelectImageIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v2, 0x2a

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v0, v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v2, v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-wrap0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f058c

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0400b4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f13027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->inflatePreview(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->hasHomeButton()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f058d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f058e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_nav_bar"

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->getNavString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_nav_bar"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return v3

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v6, "sysui_nav_bar"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_1

    const v6, 0x7f0f022f

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string/jumbo v6, ";"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v6, "start"

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string/jumbo v6, "center"

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string/jumbo v6, "end"

    const/4 v7, 0x2

    aput-object v6, v3, v7

    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const v6, 0x7f0f0585

    invoke-virtual {p0, v6}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v2, v7

    const v6, 0x7f0f0586

    invoke-virtual {p0, v6}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const v6, 0x7f0f0587

    invoke-virtual {p0, v6}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v6}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->clear()V

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    aget-object v7, v3, v4

    aget-object v8, v2, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->addButton(Ljava/lang/String;Ljava/lang/CharSequence;)V

    aget-object v6, v5, v4

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v0, v7, v6

    iget-object v9, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->getLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->addButton(Ljava/lang/String;Ljava/lang/CharSequence;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    const-string/jumbo v7, "add"

    const v8, 0x7f0f058b

    invoke-virtual {p0, v8}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->addButton(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/systemui/tuner/NavBarTuner;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v3, 0x102000a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v3, Lcom/android/systemui/tuner/NavBarTuner$Dividers;

    invoke-direct {v3, v0}, Lcom/android/systemui/tuner/NavBarTuner$Dividers;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v3}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-get1(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner;->mNavBarAdapter:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {v3, v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->setTouchHelper(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "sysui_nav_bar"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method
