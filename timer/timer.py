import tkinter as tk


counter = 0 
def counter_label(label):
  counter = 0
  def count():
    global counter
    counter += 1
    label.config(text=str(counter))
    label.after(1000, count)
  count()


root = tk.Tk()
root.title("Seconds")
label = tk.Label(root, fg="red")
label.pack()
counter_label(label)
button = tk.Button(root, text='Stop', fg='red', width=25, command=root.destroy)
button.pack()
root.mainloop()


print("Total time (seconds):  " + str(counter))
