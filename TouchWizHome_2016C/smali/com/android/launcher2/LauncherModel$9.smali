.class final Lcom/android/launcher2/LauncherModel$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addBulkItemToDatabase(Landroid/content/Context;[Landroid/content/ContentValues;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$notify:Z

.field final synthetic val$values:[Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Z[Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$9;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$9;->val$notify:Z

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$9;->val$values:[Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$9;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$9;->val$notify:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$9;->val$values:[Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
