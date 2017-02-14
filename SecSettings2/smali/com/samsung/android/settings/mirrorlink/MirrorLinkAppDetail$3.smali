.class Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$3;
.super Ljava/lang/Object;
.source "MirrorLinkAppDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLinkAppDetailfrom UI thread"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-wrap0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V

    return-void
.end method
