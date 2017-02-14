.class Ljava/sql/DriverInfo;
.super Ljava/lang/Object;
.source "DriverManager.java"


# instance fields
.field final driver:Ljava/sql/Driver;


# direct methods
.method constructor <init>(Ljava/sql/Driver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/sql/DriverInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    nop

    nop

    iget-object v2, p1, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "driver[className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
