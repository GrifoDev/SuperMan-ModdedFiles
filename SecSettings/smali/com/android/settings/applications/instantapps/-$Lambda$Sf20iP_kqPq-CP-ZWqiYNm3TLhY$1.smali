.class final synthetic Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    iget-object v1, p0, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->lambda$-com_android_settings_applications_instantapps_InstantAppButtonsController_2956(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/instantapps/-$Lambda$Sf20iP_kqPq-CP-ZWqiYNm3TLhY$1;->$m$0(Landroid/view/View;)V

    return-void
.end method
