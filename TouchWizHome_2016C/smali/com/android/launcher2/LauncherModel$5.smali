.class final Lcom/android/launcher2/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$5;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$5;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/android/launcher2/LauncherModel$5;->val$itemId:J

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/HomeItem;

    iput-object p7, p0, Lcom/android/launcher2/LauncherModel$5;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$5;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$5;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/android/launcher2/LauncherModel$5;->val$itemId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/android/launcher2/LauncherModel$5;->val$itemId:J

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$5;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v1, v4}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;)V

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
