.class Ljava/util/Formatter$FixedString;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/util/Formatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedString"
.end annotation


# instance fields
.field private s:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/Formatter;


# direct methods
.method constructor <init>(Ljava/util/Formatter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Formatter;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 2645
    iput-object p1, p0, Ljava/util/Formatter$FixedString;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public index()I
    .locals 1

    .prologue
    .line 2646
    const/4 v0, -0x2

    return v0
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2648
    iget-object v0, p0, Ljava/util/Formatter$FixedString;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-get0(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    return-object v0
.end method
