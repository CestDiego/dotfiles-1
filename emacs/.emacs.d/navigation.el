;; http://emacs.stackexchange.com/questions/7638/how-to-detect-current-workgroup-in-workgroups2/7665#7665
;; could do evil-normal-state-local-map to be buffer local, but then when change file, "," gets mapped to evil default... would have to source this file every time

(let ((workgroup-title (wg-workgroup-name (wg-current-workgroup))))
  (cond ((equal workgroup-title "main")
		 (message "hello")
		 (define-key evil-normal-state-map "\,\," (lambda () (interactive) (find-file "~/ag-sys/Else/everything/log\.txt")))
		 (define-key evil-normal-state-map "\,f" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/everything_index.txt")))
		 (define-key evil-normal-state-map "\,s" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/arch_and_program_info.txt")))
		 (define-key evil-normal-state-map "\,t" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/interaction.txt")))
		 (define-key evil-normal-state-map "\,F" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/\20xx.txt")))
		 (define-key evil-normal-state-map "\,p" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/policy.txt")))
		 (define-key evil-normal-state-map "\,p" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/other/computer/linux/arch/install.txt"))))
		((equal workgroup-title "browse")
		 (define-key evil-normal-state-map "\,\," (lambda () (interactive) (find-file "~/ag-sys/Else/everything/\#browse.txt")))
		 (define-key evil-normal-state-map "\,f" (lambda () (interactive) (find-file "~/.pentadactylrc")))
		 (define-key evil-normal-state-map "\,s" (lambda () (interactive) (find-file "~/.pentadactyl/groups.penta")))
		 (define-key evil-normal-state-map "\,t" (lambda () (interactive) (find-file "~/.pentadactyl/navigation.penta")))
		 (define-key evil-normal-state-map "\,F" (lambda () (interactive) (find-file "~/.pentadactyl/autocommands.penta")))
		 (define-key evil-normal-state-map "\,r" (lambda () (interactive) (find-file "~/README.mkd"))))
		((or (equal workgroup-title "wr") (equal workgroup-title "wr2"))
		 (define-key evil-normal-state-map "\,\," (lambda () (interactive) (find-file "~/ag-sys/Else/everything/another/_prose/structure_standards.txt")))
		 (define-key evil-normal-state-map "\,f" (lambda () (interactive) (find-file "draft_a.txt")))
		 (define-key evil-normal-state-map "\,s" (lambda () (interactive) (find-file "plot.txt")))
		 (define-key evil-normal-state-map "\,t" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/another/_prose/pots/misc.txt")))
		 (define-key evil-normal-state-map "\,w" (lambda () (interactive) (find-file "world.txt")))
		 (define-key evil-normal-state-map "\,m" (lambda () (interactive) (find-file "misc.txt")))
		 (define-key evil-normal-state-map "\,b" (lambda () (interactive) (find-file "bio.txt")))

		 (define-key evil-normal-state-map "\,l" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/another/_prose/lts/misc.txt")))
		 (define-key evil-normal-state-map "\,p" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/another/_prose/pp/todo.txt")))
		 (define-key evil-normal-state-map "\,i" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/another/ideas.txt")))
		 (define-key evil-normal-state-map "\,c" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/another/_prose/lndn/landon.txt")))
		 (define-key evil-normal-state-map "\,g" (lambda () (interactive) (find-file "~/ag-sys/Else/everything/another/_prose/gen_misc.txt"))))))
