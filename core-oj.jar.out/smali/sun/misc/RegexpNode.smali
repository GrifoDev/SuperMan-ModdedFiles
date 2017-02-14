.class Lsun/misc/RegexpNode;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# instance fields
.field c:C

.field depth:I

.field exact:Z

.field firstchild:Lsun/misc/RegexpNode;

.field nextsibling:Lsun/misc/RegexpNode;

.field re:Ljava/lang/String;

.field result:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    const/16 v0, 0x23

    iput-char v0, p0, Lsun/misc/RegexpNode;->c:C

    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/RegexpNode;->depth:I

    return-void
.end method

.method constructor <init>(CI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    iput-char p1, p0, Lsun/misc/RegexpNode;->c:C

    iput p2, p0, Lsun/misc/RegexpNode;->depth:I

    return-void
.end method


# virtual methods
.method add(C)Lsun/misc/RegexpNode;
    .locals 2

    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-nez v0, :cond_1

    new-instance v0, Lsun/misc/RegexpNode;

    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    :goto_0
    iput-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    return-object v0

    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    :cond_1
    if-eqz v0, :cond_2

    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_2
    new-instance v0, Lsun/misc/RegexpNode;

    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    iput-object v1, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_0
.end method

.method find(C)Lsun/misc/RegexpNode;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    :goto_0
    if-eqz v0, :cond_1

    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2

    iget-object v1, p0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_2

    move-object v0, p0

    const-string/jumbo v1, "("

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_3

    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_1

    const/16 v1, 0x7c

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    goto :goto_1

    :cond_2
    iget-char v1, p0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    :cond_3
    return-void
.end method
