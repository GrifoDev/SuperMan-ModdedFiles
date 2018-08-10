.class Landroid/os/TestLooperManager$MessageExecution;
.super Ljava/lang/Object;
.source "TestLooperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageExecution"
.end annotation


# instance fields
.field private m:Landroid/os/Message;

.field private response:Ljava/lang/Throwable;


# direct methods
.method static synthetic -get0(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get1(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/TestLooperManager$MessageExecution;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->m:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic -set1(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    iput-object p1, p0, Landroid/os/TestLooperManager$MessageExecution;->response:Ljava/lang/Throwable;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/TestLooperManager$MessageExecution;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/TestLooperManager$MessageExecution;-><init>()V

    return-void
.end method
