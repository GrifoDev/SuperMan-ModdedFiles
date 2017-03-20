.class public final enum Lcom/yulore/android/common/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulore/android/common/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulore/android/common/State;

.field public static final enum CREATE:Lcom/yulore/android/common/State;

.field public static final enum DESTROY:Lcom/yulore/android/common/State;

.field public static final enum PAUSE:Lcom/yulore/android/common/State;

.field public static final enum RESTART:Lcom/yulore/android/common/State;

.field public static final enum RESUME:Lcom/yulore/android/common/State;

.field public static final enum START:Lcom/yulore/android/common/State;

.field public static final enum STOP:Lcom/yulore/android/common/State;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 11
    new-instance v0, Lcom/yulore/android/common/State;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    const-string v3, "onCreate"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/yulore/android/common/State;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/android/common/State;->CREATE:Lcom/yulore/android/common/State;

    new-instance v0, Lcom/yulore/android/common/State;

    const-string v1, "START"

    const-string v2, "onStart"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/yulore/android/common/State;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/android/common/State;->START:Lcom/yulore/android/common/State;

    new-instance v0, Lcom/yulore/android/common/State;

    const-string v1, "RESUME"

    const-string v2, "onResume"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/yulore/android/common/State;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/android/common/State;->RESUME:Lcom/yulore/android/common/State;

    .line 12
    new-instance v0, Lcom/yulore/android/common/State;

    const-string v1, "PAUSE"

    const-string v2, "onPause"

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/yulore/android/common/State;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/android/common/State;->PAUSE:Lcom/yulore/android/common/State;

    new-instance v0, Lcom/yulore/android/common/State;

    const-string v1, "STOP"

    const-string v2, "onStop"

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/yulore/android/common/State;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/android/common/State;->STOP:Lcom/yulore/android/common/State;

    new-instance v0, Lcom/yulore/android/common/State;

    const-string v1, "RESTART"

    const-string v2, "onRestart"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/yulore/android/common/State;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/android/common/State;->RESTART:Lcom/yulore/android/common/State;

    new-instance v0, Lcom/yulore/android/common/State;

    const-string v1, "DESTROY"

    const/4 v2, 0x6

    const-string v3, "onDestroy"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yulore/android/common/State;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/android/common/State;->DESTROY:Lcom/yulore/android/common/State;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/yulore/android/common/State;

    const/4 v1, 0x0

    sget-object v2, Lcom/yulore/android/common/State;->CREATE:Lcom/yulore/android/common/State;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yulore/android/common/State;->START:Lcom/yulore/android/common/State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulore/android/common/State;->RESUME:Lcom/yulore/android/common/State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yulore/android/common/State;->PAUSE:Lcom/yulore/android/common/State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yulore/android/common/State;->STOP:Lcom/yulore/android/common/State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yulore/android/common/State;->RESTART:Lcom/yulore/android/common/State;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/yulore/android/common/State;->DESTROY:Lcom/yulore/android/common/State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulore/android/common/State;->$VALUES:[Lcom/yulore/android/common/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/yulore/android/common/State;->name:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/yulore/android/common/State;->index:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulore/android/common/State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/yulore/android/common/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulore/android/common/State;

    return-object v0
.end method

.method public static values()[Lcom/yulore/android/common/State;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yulore/android/common/State;->$VALUES:[Lcom/yulore/android/common/State;

    invoke-virtual {v0}, [Lcom/yulore/android/common/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulore/android/common/State;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/yulore/android/common/State;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yulore/android/common/State;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/yulore/android/common/State;->index:I

    .line 38
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yulore/android/common/State;->name:Ljava/lang/String;

    .line 30
    return-void
.end method
