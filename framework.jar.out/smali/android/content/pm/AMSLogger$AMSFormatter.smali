.class Landroid/content/pm/AMSLogger$AMSFormatter;
.super Ljava/util/logging/Formatter;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AMSLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/AMSLogger;


# direct methods
.method private constructor <init>(Landroid/content/pm/AMSLogger;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/AMSLogger$AMSFormatter;->this$0:Landroid/content/pm/AMSLogger;

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/AMSLogger;Landroid/content/pm/AMSLogger$AMSFormatter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/AMSLogger$AMSFormatter;-><init>(Landroid/content/pm/AMSLogger;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
