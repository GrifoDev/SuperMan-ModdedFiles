.class Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory15;
.super Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;
    .locals 1

    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
