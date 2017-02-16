.class public Lcom/cmdm/control/bean/CrsVote;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CrsVote"
.end annotation


# static fields
.field public static xmlns:Ljava/lang/String;


# instance fields
.field public vote:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Vote"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    sput-object v0, Lcom/cmdm/control/bean/CrsVote;->xmlns:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "vote"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/cmdm/control/bean/CrsVote;->setVote(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static getCrsVote(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "vote"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/cmdm/control/bean/CrsVote;

    invoke-direct {v0, p0}, Lcom/cmdm/control/bean/CrsVote;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "mCrsVote":Lcom/cmdm/control/bean/CrsVote;
    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 36
    .local v1, "xstream":Lcom/thoughtworks/xstream/XStream;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/XStream;->autodetectAnnotations(Z)V

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cmdm/control/bean/CrsVote;->xmlns:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "oppose"

    invoke-static {v1}, Lcom/cmdm/control/bean/CrsVote;->getCrsVote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getVote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmdm/control/bean/CrsVote;->vote:Ljava/lang/String;

    return-object v0
.end method

.method public setVote(Ljava/lang/String;)V
    .locals 0
    .param p1, "vote"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cmdm/control/bean/CrsVote;->vote:Ljava/lang/String;

    .line 56
    return-void
.end method
