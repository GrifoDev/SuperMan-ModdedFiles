.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-wrap4(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;JZ)V

    return-void
.end method
