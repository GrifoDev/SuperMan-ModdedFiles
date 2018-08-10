.class Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;
.super Ljava/lang/Object;
.source "MissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/MissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MissedCallUpdate"
.end annotation


# instance fields
.field private count:I

.field private notify:Z

.field private userId:I


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->count:I

    return v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->notify:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->userId:I

    return v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->count:I

    return p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->notify:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->userId:I

    return p1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MissedCallUpdate [count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->notify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
