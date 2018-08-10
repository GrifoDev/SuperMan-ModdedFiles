.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:J

.field private final synthetic -$f1:J

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;->-$f0:J

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;->-$f1:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->lambda$-com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager$8_31499(JJ)V

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;->-$f0:J

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;->-$f1:J

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;->$m$0()V

    return-void
.end method
