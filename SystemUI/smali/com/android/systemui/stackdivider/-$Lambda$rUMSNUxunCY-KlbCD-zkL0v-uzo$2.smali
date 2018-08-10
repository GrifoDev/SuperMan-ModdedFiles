.class final synthetic Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:J

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;->-$f0:Z

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;->-$f1:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->lambda$-com_android_systemui_stackdivider_Divider$DockDividerVisibilityListener_10091(ZJ)V

    return-void
.end method

.method public synthetic constructor <init>(ZJLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;->-$f0:Z

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;->-$f1:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/-$Lambda$rUMSNUxunCY-KlbCD-zkL0v-uzo$2;->$m$0()V

    return-void
.end method
