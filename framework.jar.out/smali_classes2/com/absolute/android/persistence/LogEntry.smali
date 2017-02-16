.class public Lcom/absolute/android/persistence/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/LogEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_message:Ljava/lang/String;

.field private m_method:Ljava/lang/String;

.field private m_severity:I

.field private m_timeStampUTC:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/absolute/android/persistence/LogEntry$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/LogEntry$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/LogEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "GMT-00:00"

    .line 90
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/absolute/android/persistence/LogEntry;-><init>(Ljava/util/Calendar;ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_severity:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_message:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_method:Ljava/lang/String;

    .line 174
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_timeStampUTC:Ljava/util/Calendar;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/LogEntry$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 120
    if-ne p2, v0, :cond_1

    .line 124
    :cond_0
    if-eqz p3, :cond_2

    .line 125
    if-eqz p4, :cond_3

    .line 127
    iput-object p1, p0, Lcom/absolute/android/persistence/LogEntry;->m_timeStampUTC:Ljava/util/Calendar;

    .line 128
    iput p2, p0, Lcom/absolute/android/persistence/LogEntry;->m_severity:I

    .line 129
    iput-object p3, p0, Lcom/absolute/android/persistence/LogEntry;->m_method:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/absolute/android/persistence/LogEntry;->m_message:Ljava/lang/String;

    .line 131
    return-void

    :cond_1
    const/4 v0, 0x5

    .line 120
    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid log severity level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "message is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_message:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_method:Ljava/lang/String;

    return-object v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_severity:I

    return v0
.end method

.method public getTimeStampUTC()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_timeStampUTC:Ljava/util/Calendar;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_severity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/absolute/android/persistence/LogEntry;->m_timeStampUTC:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 154
    return-void
.end method
