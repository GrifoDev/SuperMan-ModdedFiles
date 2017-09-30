.class Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/Pool$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;-><init>(Ljava/lang/Class;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not call default constructor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-static {v3}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not call default constructor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-static {v3}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
