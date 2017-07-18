.class Ljava/util/prefs/FileSystemPreferences$8;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .locals 0

    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/util/prefs/FileSystemPreferences$8;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-virtual {v4}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get11()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-set2(Z)Z

    :goto_1
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get7()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->-set0(Z)Z

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$8;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
