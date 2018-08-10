.class Lcom/samsung/android/share/executor/data/NlgRequestInfo$Attribute;
.super Ljava/lang/Object;
.source "NlgRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/executor/data/NlgRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attribute"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/NlgRequestInfo$Attribute;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/share/executor/data/NlgRequestInfo$Attribute;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/share/executor/data/NlgRequestInfo$Attribute;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/executor/data/NlgRequestInfo$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
