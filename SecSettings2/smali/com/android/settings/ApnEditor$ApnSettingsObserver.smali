.class Lcom/android/settings/ApnEditor$ApnSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/settings/ApnEditor;->-wrap0(Lcom/android/settings/ApnEditor;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/ApnEditor;->-get0(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/ApnEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->-set0(Lcom/android/settings/ApnEditor;Z)Z

    :cond_0
    return-void
.end method
