.class Lcom/android/launcher2/Folder$24;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->updateScrollViewSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$24;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder$24;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2100(Lcom/android/launcher2/Folder;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$24;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    return-void
.end method
