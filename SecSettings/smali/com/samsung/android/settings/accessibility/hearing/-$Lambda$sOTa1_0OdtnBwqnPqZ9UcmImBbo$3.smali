.class final synthetic Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$sOTa1_0OdtnBwqnPqZ9UcmImBbo$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$sOTa1_0OdtnBwqnPqZ9UcmImBbo$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/accessibility/hearing/FlashNotificationPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$sOTa1_0OdtnBwqnPqZ9UcmImBbo$3;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/settings/accessibility/hearing/FlashNotificationPreferenceController;->lambda$-com_samsung_android_settings_accessibility_hearing_FlashNotificationPreferenceController_5439(Landroid/support/v7/preference/Preference;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$sOTa1_0OdtnBwqnPqZ9UcmImBbo$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$sOTa1_0OdtnBwqnPqZ9UcmImBbo$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$sOTa1_0OdtnBwqnPqZ9UcmImBbo$3;->$m$0(Landroid/content/DialogInterface;)V

    return-void
.end method
