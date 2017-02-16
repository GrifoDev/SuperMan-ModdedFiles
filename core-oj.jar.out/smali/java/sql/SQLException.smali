.class public Ljava/sql/SQLException;
.super Ljava/lang/Exception;
.source "SQLException.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/sql/SQLException;",
            "Ljava/sql/SQLException;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1da1e930db3e75dcL


# instance fields
.field private SQLState:Ljava/lang/String;

.field private volatile next:Ljava/sql/SQLException;

.field private vendorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 372
    const-class v0, Ljava/sql/SQLException;

    const-class v1, Ljava/sql/SQLException;

    const-string/jumbo v2, "next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 371
    sput-object v0, Ljava/sql/SQLException;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 141
    iput-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 143
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 139
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    iput-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 122
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 99
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLException: SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 72
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 73
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, ") vendor code("

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, ")"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 236
    invoke-direct {p0, p1, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 239
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 240
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, ") vendor code("

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, ")"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 235
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 214
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 186
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 167
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Ljava/sql/SQLException;->vendorCode:I

    return v0
.end method

.method public getNextException()Ljava/sql/SQLException;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/sql/SQLException$1;

    invoke-direct {v0, p0}, Ljava/sql/SQLException$1;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public setNextException(Ljava/sql/SQLException;)V
    .locals 4
    .param p1, "ex"    # Ljava/sql/SQLException;

    .prologue
    const/4 v3, 0x0

    .line 289
    move-object v0, p0

    .line 291
    .local v0, "current":Ljava/sql/SQLException;
    :goto_0
    iget-object v1, v0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 292
    .local v1, "next":Ljava/sql/SQLException;
    if-eqz v1, :cond_0

    .line 293
    move-object v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_0
    sget-object v2, Ljava/sql/SQLException;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    return-void

    .line 300
    :cond_1
    iget-object v0, v0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    goto :goto_0
.end method
