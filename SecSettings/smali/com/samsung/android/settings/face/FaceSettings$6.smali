.class Lcom/samsung/android/settings/face/FaceSettings$6;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$6;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$6;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$6;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$6;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0212

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
