.class public Landroid/bluetooth/BluetoothDump;
.super Ljava/lang/Object;
.source "BluetoothDump.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDump"

.field private static final VDBG:Z

.field private static bdump:Landroid/bluetooth/BluetoothDump;

.field static day:Ljava/lang/String;

.field static hour:Ljava/lang/String;

.field private static lineFeed:Ljava/lang/String;

.field static milisec:Ljava/lang/String;

.field static min:Ljava/lang/String;

.field static month:Ljava/lang/String;

.field static sec:Ljava/lang/String;

.field private static sysdump_time:Ljava/lang/String;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "\n"

    sput-object v0, Landroid/bluetooth/BluetoothDump;->lineFeed:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/bluetooth/BluetoothDump;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDump;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDump;->bdump:Landroid/bluetooth/BluetoothDump;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BtLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/bluetooth/BluetoothDump;->getTimeToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/bluetooth/BluetoothDump;->lineFeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    .local v0, "oneLine":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/bluetooth/BluetoothDump;->bdump:Landroid/bluetooth/BluetoothDump;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDump;->putLogs(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static getTimeToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .local v0, "cal":Ljava/util/Calendar;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    .line 69
    .local v1, "df":Ljava/text/DecimalFormat;
    const-string/jumbo v2, "00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->month:Ljava/lang/String;

    .line 71
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->day:Ljava/lang/String;

    .line 72
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->hour:Ljava/lang/String;

    .line 73
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->min:Ljava/lang/String;

    .line 74
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->sec:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "000"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 77
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->milisec:Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/bluetooth/BluetoothDump;->month:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->hour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->min:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->sec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->milisec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->sysdump_time:Ljava/lang/String;

    .line 80
    sget-object v2, Landroid/bluetooth/BluetoothDump;->sysdump_time:Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public putLogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 59
    iget-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->putLogs(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
