.class public Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;
.super Ljava/lang/Object;
.source "SemEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# static fields
.field public static final DATE:I = 0x1

.field public static final DATE_MILLISECOND:I = 0x2

.field public static final EMAIL_ADDRESS:I = 0x6

.field public static final PHONE_NUMBER:I = 0x5

.field public static final TIME:I = 0x3

.field public static final TIME_MILLISECOND:I = 0x4

.field public static final URL:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/infoextraction/regex/SemEntityInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;->this$0:Lcom/samsung/android/infoextraction/regex/SemEntityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
