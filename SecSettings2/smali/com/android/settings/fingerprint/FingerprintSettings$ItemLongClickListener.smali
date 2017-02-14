.class Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ItemLongClickListener Huntip active : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, -0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v1

    if-gt p3, v1, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    const-string/jumbo v1, "FpstFingerprintSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ItemLongClickListener mEnrolledFingerCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$ItemLongClickListener;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get0(Lcom/android/settings/fingerprint/FingerprintSettings;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-static {v2, v1, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V

    const/4 v1, 0x1

    return v1
.end method
