.class Lrx/Observable$23;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(I)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/subjects/Subject",
        "<-TT;+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$bufferSize:I


# direct methods
.method constructor <init>(Lrx/Observable;I)V
    .locals 0
    .param p1, "this$0"    # Lrx/Observable;

    .prologue
    .line 5915
    .local p0, "this":Lrx/Observable$23;, "Lrx/Observable.23;"
    iput-object p1, p0, Lrx/Observable$23;->this$0:Lrx/Observable;

    iput p2, p0, Lrx/Observable$23;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5915
    .local p0, "this":Lrx/Observable$23;, "Lrx/Observable.23;"
    invoke-virtual {p0}, Lrx/Observable$23;->call()Lrx/subjects/Subject;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/Subject",
            "<-TT;+TT;>;"
        }
    .end annotation

    .prologue
    .line 5919
    .local p0, "this":Lrx/Observable$23;, "Lrx/Observable.23;"
    iget v0, p0, Lrx/Observable$23;->val$bufferSize:I

    invoke-static {v0}, Lrx/subjects/ReplaySubject;->createWithSize(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method
