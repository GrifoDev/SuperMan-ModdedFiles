.class public Lcom/sec/ims/IMSParameter$SSCONFIG;
.super Ljava/lang/Object;
.source "IMSParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSCONFIG"
.end annotation


# static fields
.field public static final CB_TYPE:Ljava/lang/String; = "cbtype"

.field public static final CF_TYPE:Ljava/lang/String; = "cftype"

.field public static final CF_URI:Ljava/lang/String; = "cfuri"

.field public static final CF_URI_LENGTH:Ljava/lang/String; = "cfurilength"

.field public static final CF_URI_TYPE:Ljava/lang/String; = "cfuritype"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "errormessage"

.field public static final ERROR_TYPE:Ljava/lang/String; = "errorcode"

.field public static final EVENT_TYPE:Ljava/lang/String; = "eventtype"

.field public static final NO_REPLAY_TIME:Ljava/lang/String; = "noreplaytime"

.field public static final NUMBER_DATE:Ljava/lang/String; = "numberNdate"

.field public static final NUMBER_OF_CLASSES:Ljava/lang/String; = "numberofclasses"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionid"

.field public static final SS_CLASS:Ljava/lang/String; = "ssclass"

.field public static final SS_STATUS:Ljava/lang/String; = "ssstatus"

.field public static final START_TIME:Ljava/lang/String; = "start_time"

.field public static final SUB_EVENT_TYPE:Ljava/lang/String; = "subeventtype"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
