.class public Lcom/android/internal/app/AccessibilityButtonChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilityButtonChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;,
        Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;
    }
.end annotation


# static fields
.field private static final MAGNIFICATION_COMPONENT_ID:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"


# instance fields
.field private mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

.field private mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    iput-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method

.method private static getServiceAccessibilityButtonTargets(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;",
            ">;"
        }
    .end annotation

    const-string/jumbo v5, "accessibility"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;-><init>(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private onTargetSelected(Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_button_target_component"

    invoke-virtual {p1}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->finish()V

    return-void
.end method


# virtual methods
.method synthetic -com_android_internal_app_AccessibilityButtonChooserActivity-mthref-0()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method synthetic lambda$-com_android_internal_app_AccessibilityButtonChooserActivity_3326(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->onTargetSelected(Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x1090018

    invoke-virtual {p0, v4}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->setContentView(I)V

    const v4, 0x1020255

    invoke-virtual {p0, v4}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/internal/app/-$Lambda$0r_TDm8lcq9IOpwsSKOm5X0EL-Q$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/-$Lambda$0r_TDm8lcq9IOpwsSKOm5X0EL-Q$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_button_target_component"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x10201a6

    invoke-virtual {p0, v4}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    new-instance v4, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    const-string/jumbo v5, "com.android.server.accessibility.MagnificationController"

    const v6, 0x1040072

    const v7, 0x1080382

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    invoke-static {p0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->getServiceAccessibilityButtonTargets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mMagnificationTarget:Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->finish()V

    :cond_3
    const v4, 0x10201a5

    invoke-virtual {p0, v4}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v4, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;

    invoke-direct {v4, p0, v9}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;-><init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/android/internal/app/-$Lambda$0r_TDm8lcq9IOpwsSKOm5X0EL-Q;

    invoke-direct {v4, p0}, Lcom/android/internal/app/-$Lambda$0r_TDm8lcq9IOpwsSKOm5X0EL-Q;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
