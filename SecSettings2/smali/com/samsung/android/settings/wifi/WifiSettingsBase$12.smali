.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onP2pMenuPressed()V

    return-void
.end method
