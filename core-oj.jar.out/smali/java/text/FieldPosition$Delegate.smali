.class Ljava/text/FieldPosition$Delegate;
.super Ljava/lang/Object;
.source "FieldPosition.java"

# interfaces
.implements Ljava/text/Format$FieldDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/FieldPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delegate"
.end annotation


# instance fields
.field private encounteredField:Z

.field final synthetic this$0:Ljava/text/FieldPosition;


# direct methods
.method private constructor <init>(Ljava/text/FieldPosition;)V
    .locals 0

    iput-object p1, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition$Delegate;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;)V

    return-void
.end method


# virtual methods
.method public formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 1

    iget-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-static {v0, p2, p1}, Ljava/text/FieldPosition;->-wrap1(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    if-eq p4, p5, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 1

    iget-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-static {v0, p1}, Ljava/text/FieldPosition;->-wrap0(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    if-eq p3, p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
