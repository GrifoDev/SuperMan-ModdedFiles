.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-wrap4(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;JZ)V

    return-void
.end method
