.class final Landroid/view/ViewDebug$7;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$encoder:Landroid/view/ViewHierarchyEncoder;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewHierarchyEncoder;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    iput-object p2, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    const-string/jumbo v1, "window:left"

    iget-object v2, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    const-string/jumbo v1, "window:top"

    iget-object v2, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    iget-object v2, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    invoke-virtual {v0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
