.class Landroid/os/StrictMode$InstanceCountViolation;
.super Ljava/lang/Throwable;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceCountViolation"
.end annotation


# static fields
.field private static final FAKE_STACK:[Ljava/lang/StackTraceElement;


# instance fields
.field final mClass:Ljava/lang/Class;

.field final mInstances:J

.field final mLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/StackTraceElement;

    new-instance v1, Ljava/lang/StackTraceElement;

    const-string/jumbo v2, "android.os.StrictMode"

    const-string/jumbo v3, "setClassInstanceLimit"

    const-string/jumbo v4, "StrictMode.java"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/StrictMode$InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; instances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/StrictMode$InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$InstanceCountViolation;->setStackTrace([Ljava/lang/StackTraceElement;)V

    iput-object p1, p0, Landroid/os/StrictMode$InstanceCountViolation;->mClass:Ljava/lang/Class;

    iput-wide p2, p0, Landroid/os/StrictMode$InstanceCountViolation;->mInstances:J

    iput p4, p0, Landroid/os/StrictMode$InstanceCountViolation;->mLimit:I

    return-void
.end method
