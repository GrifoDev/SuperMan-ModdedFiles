.class Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/Pool$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

.field final synthetic val$lenient:Z

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;Ljava/util/Locale;Z)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;->val$locale:Ljava/util/Locale;

    iput-boolean p3, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;->val$lenient:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;->val$locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafeSimpleDateFormat$1;->val$lenient:Z

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v0
.end method
