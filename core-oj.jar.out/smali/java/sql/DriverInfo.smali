.class Ljava/sql/DriverInfo;
.super Ljava/lang/Object;
.source "DriverManager.java"


# instance fields
.field final driver:Ljava/sql/Driver;


# direct methods
.method constructor <init>(Ljava/sql/Driver;)V
    .locals 0
    .param p1, "driver"    # Ljava/sql/Driver;

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object p1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    .line 606
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 611
    instance-of v1, p1, Ljava/sql/DriverInfo;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    nop

    nop

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p1, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 611
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
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
