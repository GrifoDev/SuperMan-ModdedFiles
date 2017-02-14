.class Ljava/util/prefs/FileSystemPreferences$Remove;
.super Ljava/util/prefs/FileSystemPreferences$Change;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Remove"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->this$0:Ljava/util/prefs/FileSystemPreferences;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$Change;)V

    iput-object p2, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method replay()V
    .locals 2

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v0}, Ljava/util/prefs/FileSystemPreferences;->-get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences$Remove;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
