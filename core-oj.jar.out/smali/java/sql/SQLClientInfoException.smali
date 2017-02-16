.class public Ljava/sql/SQLClientInfoException;
.super Ljava/sql/SQLException;
.source "SQLClientInfoException.java"


# static fields
.field private static final serialVersionUID:J = -0x3bf2512f724c8008L


# instance fields
.field private failedProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p4, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    iput-object p4, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p5, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    .local p4, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    invoke-virtual {p0, p5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 300
    iput-object p4, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p3, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput-object p3, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 238
    iput-object p3, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 151
    iput-object p2, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 180
    iput-object p2, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 94
    iput-object p1, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    const/4 v0, 0x0

    .line 121
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 123
    iput-object p1, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    .line 119
    return-void
.end method


# virtual methods
.method public getFailedProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    return-object v0
.end method
