.class Lcom/android/launcher2/IconMoveContainer$9;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$9;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iput-object p2, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$item:Lcom/android/launcher2/HomeItem;

    iput p3, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$cellX:I

    iput p4, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$cellY:I

    iput p5, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$screen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->mId:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer$9;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v3}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "container"

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v4, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "cellX"

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellY"

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "screen"

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer$9;->val$screen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
