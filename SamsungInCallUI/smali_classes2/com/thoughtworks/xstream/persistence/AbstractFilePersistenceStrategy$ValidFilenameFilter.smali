.class public Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValidFilenameFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;


# direct methods
.method protected constructor <init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;->this$0:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;->this$0:Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->isValid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
