.class Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;
.super Ljava/lang/Object;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showFlashNotificationConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x17d1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method
