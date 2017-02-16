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

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    .line 271
    const/16 v0, 0x23

    iput-char v0, p0, Lsun/misc/RegexpNode;->c:C

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/RegexpNode;->depth:I

    .line 270
    return-void
.end method

.method constructor <init>(CI)V
    .locals 1
    .param p1, "C"    # C
    .param p2, "depth"    # I

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    .line 275
    iput-char p1, p0, Lsun/misc/RegexpNode;->c:C

    .line 276
    iput p2, p0, Lsun/misc/RegexpNode;->depth:I

    .line 274
    return-void
.end method


# virtual methods
.method add(C)Lsun/misc/RegexpNode;
    .locals 2
    .param p1, "C"    # C

    .prologue
    .line 279
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .line 280
    .local v0, "p":Lsun/misc/RegexpNode;
    if-nez v0, :cond_1

    .line 281
    new-instance v0, Lsun/misc/RegexpNode;

    .end local v0    # "p":Lsun/misc/RegexpNode;
    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    .line 291
    .restart local v0    # "p":Lsun/misc/RegexpNode;
    :goto_0
    iput-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .line 292
    return-object v0

    .line 287
    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    .line 283
    :cond_1
    if-eqz v0, :cond_2

    .line 284
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_0

    .line 285
    return-object v0

    .line 288
    :cond_2
    new-instance v0, Lsun/misc/RegexpNode;

    .end local v0    # "p":Lsun/misc/RegexpNode;
    iget v1, p0, Lsun/misc/RegexpNode;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lsun/misc/RegexpNode;-><init>(CI)V

    .line 289
    .restart local v0    # "p":Lsun/misc/RegexpNode;
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    iput-object v1, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_0
.end method

.method find(C)Lsun/misc/RegexpNode;
    .locals 3
    .param p1, "C"    # C

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    .local v0, "p":Lsun/misc/RegexpNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 298
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    if-ne v1, p1, :cond_0

    .line 299
    return-object v0

    .line 297
    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    goto :goto_0

    .line 300
    :cond_1
    return-object v2
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 303
    iget-object v1, p0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_2

    .line 304
    move-object v0, p0

    .line 305
    .local v0, "p":Lsun/misc/RegexpNode;
    const-string/jumbo v1, "("

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    :goto_0
    if-eqz v0, :cond_3

    .line 307
    iget-char v1, v0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    .line 308
    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 310
    :cond_0
    iget-object v0, v0, Lsun/misc/RegexpNode;->nextsibling:Lsun/misc/RegexpNode;

    .line 311
    if-eqz v0, :cond_1

    const/16 v1, 0x7c

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    goto :goto_1

    .line 314
    .end local v0    # "p":Lsun/misc/RegexpNode;
    :cond_2
    iget-char v1, p0, Lsun/misc/RegexpNode;->c:C

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->write(I)V

    .line 315
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v1, :cond_3

    .line 316
    iget-object v1, p0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v1, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 302
    :cond_3
    return-void
.end method
