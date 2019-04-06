.class Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;Lrx/schedulers/TrampolineScheduler$TimedAction;)V
    .locals 0
    .param p1, "this$1"    # Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    .prologue
    .line 87
    iput-object p1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$1:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    iput-object p2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$1:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    iget-object v0, v1, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/PriorityQueue;

    .line 92
    .local v0, "_q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lrx/schedulers/TrampolineScheduler$TimedAction;>;"
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method
