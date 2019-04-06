.class public final Lrx/schedulers/TrampolineScheduler;
.super Lrx/Scheduler;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TrampolineScheduler$1;,
        Lrx/schedulers/TrampolineScheduler$TimedAction;,
        Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
    }
.end annotation


# static fields
.field static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/schedulers/TrampolineScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lrx/schedulers/TrampolineScheduler;


# instance fields
.field volatile counter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lrx/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lrx/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    .line 49
    const-class v0, Lrx/schedulers/TrampolineScheduler;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/schedulers/TrampolineScheduler;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$200(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-static {p0, p1}, Lrx/schedulers/TrampolineScheduler;->compare(II)I

    move-result v0

    return v0
.end method

.method private static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 136
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static instance()Lrx/schedulers/TrampolineScheduler;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>(Lrx/schedulers/TrampolineScheduler;Lrx/schedulers/TrampolineScheduler$1;)V

    return-object v0
.end method
