.class public Lcom/sec/android/app/sysscope/engine/l;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/sec/android/app/sysscope/engine/l;


# instance fields
.field private a:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sec/android/app/sysscope/engine/l;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sysscope/engine/l;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/engine/l;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/l;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/l;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    return-void
.end method

.method public b()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/l;->a:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    return-object v0
.end method
