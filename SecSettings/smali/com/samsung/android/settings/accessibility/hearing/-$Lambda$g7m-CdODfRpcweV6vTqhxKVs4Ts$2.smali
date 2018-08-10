.class final synthetic Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$g7m-CdODfRpcweV6vTqhxKVs4Ts$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$g7m-CdODfRpcweV6vTqhxKVs4Ts$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/accessibility/hearing/ScreenNotificationPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$g7m-CdODfRpcweV6vTqhxKVs4Ts$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/settings/accessibility/hearing/ScreenNotificationPreferenceController;->lambda$-com_samsung_android_settings_accessibility_hearing_ScreenNotificationPreferenceController_3950(Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$g7m-CdODfRpcweV6vTqhxKVs4Ts$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$g7m-CdODfRpcweV6vTqhxKVs4Ts$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$g7m-CdODfRpcweV6vTqhxKVs4Ts$2;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
