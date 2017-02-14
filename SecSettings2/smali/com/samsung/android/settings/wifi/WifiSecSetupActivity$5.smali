.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;->val$id:I

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;IJ)V

    return-void
.end method
